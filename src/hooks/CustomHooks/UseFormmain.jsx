import React from 'react'
import UseForm from './UseForm'

function UseFormmain() {
    const{Values,handlechange,handleSubmit}=UseForm({name:"",email:""})
     function onSubmit(e) {
    // pass a callback if you want to handle values after preventing default
    handleSubmit(e, (vals) => {
      console.log('form submitted values:', vals);
      // do whatever: send to API, reset form, etc.
    });
  }
  return (
<>
<form action={onSubmit}>
    <label htmlFor="">Enter name : <input type="text" name="name" placeholder='enter name' value={Values.name} onChange={handlechange} /></label>
    <label htmlFor="">Enter email : <input type="text" name="email" placeholder='enter email' value={Values.email} onChange={handlechange} /></label>
    <button type='submit'>submit</button>
</form>

<pre>{JSON.stringify(Values,null,2)}</pre>
</>

  )
}

export default UseFormmain