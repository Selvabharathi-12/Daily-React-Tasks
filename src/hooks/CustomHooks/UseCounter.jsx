import React, { useState } from 'react'

export default function UseCounter({initialValue=0}) {
    const[Count,SetCount]=useState(initialValue);
    function increment(){
        SetCount(count=>count+1)
    }
    function decrement(){
        SetCount(count=>count-1)
    }
    function reset(){
        SetCount(count=>count=0)
    }
  return (
    {Count,increment,decrement,reset}
  )
}