import './App.css';
import axios from "axios";
import { graphQL } from './endpoints';
import { useState } from "react";

function App() {
  const [data, setData] = useState({id: null, message: "Loading..."})

  const getMessage = () => {
    axios.post(graphQL, {
      query: `query getMessages {
        test {
          id
          message
          fecha_creacion
        }
      }    
      `
    })
    .then (response => {          
      const info = response.data.data.test[0] || { id: 1, message: "Error" }
      setData(info)      
    })
    .catch(error=> {
      console.log("ERROR => ", error)
    })
  }

  return (
    <div className="App">
      <header className="App-header">
        <div>          
          {(data.id !== null) &&
            (<table>
              <tr>
                <th align="right">ID: </th>
                <td align="left">{data.id}</td>
              </tr>
              <tr>
                <th align="right">Message:</th>
                <td>{data.message}</td>
              </tr>
            </table>
            )           
          }          
        </div>
        <button onClick={()=>getMessage()}> Consultar </button>
      </header>
    </div>
  );
}

export default App;
