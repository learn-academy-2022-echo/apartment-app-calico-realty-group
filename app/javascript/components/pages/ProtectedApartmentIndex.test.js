import React from "react"
import { render, screen } from "@testing-library/react"
import ProtectedApartmentIndex from "./ProtectedApartmentIndex"
import mockApartments from "../mockApartments"

describe("<ProtectedApartmentIndex />", () => {
  it("renders ProtectedApartmentIndex without crashing", () => {
    const div = document.createElement("div")
    render(<ProtectedApartmentIndex />, div)
    expect("List of apartments for logged in users.").toBeInTheDocument
  })
})
