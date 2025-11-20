import React, { useState } from "react";
import "./Components.css";

function Controlled(){
  //controlled components will uses react
  //uncontrolled will happeed by dom are react
  const [val, setVal] = useState("");
  const [showvalue,setshow]=useState("")
  const inputRef=React.useRef();
  const handleshow=()=>{
      setshow(inputRef.current.value)
  }
  return (
    <div>
      <div><div>Welcome Controlled Component</div>
      <form>
        <input type="text" value={val} onChange={(e) => setVal(e.target.value)} />
      </form>
      <p>{val}</p>
      </div>
      <div>
        <div>Welcome Uncontrolled Component</div>
        <form>
          <input type="text" ref={inputRef}/>
          <button type="button" onClick={handleshow}>Show Result</button>
        </form>
        <p>{showvalue}</p>
      </div>

    </div>
  );
}

export default Controlled;
