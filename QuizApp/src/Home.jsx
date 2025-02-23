import { useState } from "react"
import { useNavigate} from "react-router-dom";
import './quizstyle.css';

export default function Home({handleClick}){
    const [topic,setTopic] = useState('')
    const navigate = useNavigate();
    
    return(
        <>
        <div className="home-banner">QUIZ APPLICATION</div>
        <div className="home-container">
        <h4>Select Topic from the drop down menu below</h4> 
        <select onChange={(e) => setTopic(e.target.value)} value={topic}>

                <option value="" disabled>
                    Select a Topic
                </option>
                <option value="Java">Java</option>
                <option value="Python">Python</option>
                <option value="Spring">Spring</option>
                <option value="Django">Django</option>
                <option value="Html">HTML</option>
                <option value="Css">CSS</option>
                <option value="Javascript">JavaScript</option>
                <option value="React">React</option>

        </select>
            
        <br></br>

        <button onClick={()=>{
            handleClick(topic);
            navigate("/quiz");
            }} 
        disabled={!topic}>Start</button>

        <h5>{topic !== ""?`Click Start to begin with the ${topic} Quiz`:""}</h5>
              
        </div>
        </>
    )
}