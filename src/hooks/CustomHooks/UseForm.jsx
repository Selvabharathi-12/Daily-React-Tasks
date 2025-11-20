import React, { useState } from 'react'

function UseForm(initialValues={}) {
    const[Values,Setvalues]=useState(initialValues);
    function handlechange(e){
        const{name,value}=e.target;
        Setvalues(prev=>({...prev,[name]:value}))
    }
    function handleSubmit(e, callback) {
    if (e && typeof e.preventDefault === 'function') e.preventDefault();
    if (typeof callback === 'function') callback(Values);
    // you can also return values, or do other side effects here
    return Values;
  }
  return (
    {Values,handlechange,handleSubmit}
  )
}

export default UseForm