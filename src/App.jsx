import Card from "./components/Card"
function App() {
  return <>
    <div>Hello React !</div>
  <Card variant="normal">
    <Card.Header>Profile</Card.Header>
    <Card.Body>
      <p>selva bharathi</p>
      <p>React Developer</p>
    </Card.Body>
    <Card.Footer>Thank You</Card.Footer>
  </Card>
     <Card variant="danger" size="medium">
    <Card.Header>Profile</Card.Header>
    <Card.Body>
      <p>selva bharathi</p>
      <p>React Developer</p>
    </Card.Body>
    <Card.Footer>Thank You</Card.Footer>
  </Card>
   
  
  </>
}

export default App
