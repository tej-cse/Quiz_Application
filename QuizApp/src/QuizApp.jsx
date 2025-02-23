import { useState, useEffect } from 'react'
import './quizstyle.css'

function QuizApp({topic}) {
    const [index, setIndex] = useState(0);
    const [option, setOption] = useState('');
    
    const [finished, setFinish] = useState(false);
    const [score, setScore] = useState(0);
    
   
    const [data, setData] = useState(null);
    const [loading, setLoading] = useState(true);
    const [error, setError] = useState(null);

    

    useEffect(() => {
        // Fetch data inside useEffect whenever 'topic' changes
        setLoading(true); // Set loading to true before fetching
        fetch(`http://localhost:8080/question/${topic}`)
          .then((response) => {
            if (!response.ok) {
              throw new Error("Network response was not ok");
            }
            return response.json(); // Convert response to JSON
          })
          .then((data) => {
            setData(data); // Store data in state
            setLoading(false); // Turn off loading
          })
          .catch((error) => {
            setError(error); // Handle errors
            setLoading(false); // Turn off loading
          });
      }, [topic]);

    if (loading) return <p>Loading...</p>;
    if (error) return <p>Error: {error.message}</p>;
    

    const handleNext = () => {
        if(index < data.length-1){
            if(data[index].rightAnswer === data[index].option) {
                setScore(score+1);
            }
            setIndex(index+1);
            setOption(null);
        }
        else {
            //for last question , option check
            if(data[index].rightAnswer === data[index].option) {
                setScore(score+1);
            }
            setFinish(true);
        }
    }

    const handleSelect = (optn) => {
        setOption(optn);
    }

    if(finished) {
        return(
            <div className='scorePage'>
                <h1>Quiz Finished</h1>
                <h3>Your Score is {score} out of {data.length}</h3>
            </div>
        )
    }

    return (
        <div className='quiz'>
            <h1>{data[index].question}</h1>
            <ul>
                <li className={option === 'option1'?'selected':''}
                onClick={()=>{handleSelect('option1')}}>{data[index].option1}</li>

                <li className={option === 'option2'?'selected':''}
                onClick={() => {handleSelect('option2')}}>{data[index].option2}</li>

                <li className={option === 'option3'?'selected':''}
                onClick={() => {handleSelect('option3')}}>{data[index].option3}</li>

                <li className={option === 'option4'?'selected':''}
                onClick={() => {handleSelect('option4')}}>{data[index].option4}</li>
            </ul>
            <button onClick={handleNext} disabled={!option}>Next</button>
            <h4>Question {index+1} of {data.length}</h4>
        </div>
    )
}

export default QuizApp;