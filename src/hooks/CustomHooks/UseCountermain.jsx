import React from 'react'
import UseCounter from './UseCounter'

function UseCountermain() {
    const{Count,increment,decrement,reset}=UseCounter(0);
  return (
        <>
            <p>Count is :{Count}</p>
            <button onClick={increment}>+</button>
            <button onClick={decrement}>-</button>
            <button onClick={reset}>reset</button>
            
            </>
  )
}

export default UseCountermain