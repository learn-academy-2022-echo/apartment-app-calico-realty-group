import React from "react"
import Navigation from "./Navigation"


const Header = (props) => {
  return (
    <>
    <div className="TopNav">
      <h1>Apartment App</h1>
      <Navigation {...props} />
    </div>
    </>
  )
}

export default Header
