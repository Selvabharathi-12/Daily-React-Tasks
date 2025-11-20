import React from 'react'
import './Components.css'
function Card({children,variant,size}) {
    return <>
    <div className={variant}>{children}</div>
    </>
}
Card.Header=function CardHeader({children}){
    return <h1>{children}</h1>

}
Card.Body=function CardBody({children}){
    return <div>{children}</div>
}
Card.Footer=function CardFooter({children}){
    return <small>{children}</small>
}

export default Card