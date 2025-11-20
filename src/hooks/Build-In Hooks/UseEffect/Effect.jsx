import React, { useEffect, useState } from 'react'

function Effect() {
    const[count,setCount]=useState(0);
    useEffect(()=>{
        console.log("it is done by effect",count);
        return()=>{
            console.log("is is done by use",count)
        }; 
    },[count])
  return (
   <> <button onClick={()=>(setCount((c)=>c+1))}>Increment</button></>
  )
}

export default Effect