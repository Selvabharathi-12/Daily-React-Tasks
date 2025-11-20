import React, { useState } from 'react'

export default function UseToggle(initial=false) {
       const[Toggle,setToggle]=useState(initial);
       function toggling(){
       setToggle(prev=>!prev);
       }
  return (
{Toggle,toggling}
  )
}

