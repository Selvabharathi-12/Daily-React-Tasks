import React from 'react'
import "./Components.css"
function Button({children,variant}) {
  return (
   
   <button className={`btn ${variant}`}>{children}</button>
  )
}

export default Button