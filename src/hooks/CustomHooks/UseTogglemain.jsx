import React from 'react'
import UseToggle from './UseToggle'
function UseTogglemain() {
 const{Toggle,toggling}=UseToggle(false);
  return (
   <> <button onClick={toggling}>Toggle it</button>
    {Toggle&&<div>it is showing</div>}</>
  )
}

export default UseTogglemain