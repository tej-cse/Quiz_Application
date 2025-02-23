import QuizApp from './QuizApp'
import Home from './Home'
import {Route, Routes} from 'react-router-dom';
import { useState } from 'react'

function App() {
    const [topic,setTopic] = useState('')
    const handleClick = (optn) => {
        setTopic(optn);
    }
    return (
        <div>
          <Routes>
              <Route path='/' element={<Home handleClick={handleClick} />}></Route>
              <Route path='/quiz' element={<QuizApp topic={topic} />}></Route>
          </Routes>
      </div>
    )
}

export default App;