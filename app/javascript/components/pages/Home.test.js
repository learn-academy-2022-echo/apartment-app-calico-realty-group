import React from "react"
import { render } from "@testing-library/react"
import background1 from "../assets/background1.jpeg"
import Home from "./Home"
import { BrowserRouter } from 'react-router-dom'
import { toBeInTheDocument } from "@testing-library/jest-dom/dist/matchers"

describe("<Home />", () => {
  it("renders without crashing", () => {
    render(<Home />)
      
    const element = screen.getByText(/Welcome! Calico Realty/i)
    expect(element).toBeInTheDocument()
  })
  
})
