import React from "react"

export default function LoginForm (){
    const [form,setForm]=React.useState({
        name:"",
        email:"",
        age:""
}) ;
    function HandleChange(e){
        const{name,value}=e.target;
        setForm((field)=>({...field,[name]:value}))
    }
    return <>
        <div>
           <input type="text" name="name" value={form.name} onChange={HandleChange}/>
            <input type="email" name="email" value={form.email} onChange={HandleChange}/>
              <input type="number" name="number" value={form.age} onChange={HandleChange}/>
                <pre>{JSON.stringify(form, null, 2)}</pre>   
        </div>
    </>
}