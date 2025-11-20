import React, { useEffect } from 'react'

function SimpleUseEffect() {
  useEffect(()=>{console.log("its will visible only ones");
  },[])
  return (
    <div>SimpleUseEffect</div>
  )
}

export default SimpleUseEffect