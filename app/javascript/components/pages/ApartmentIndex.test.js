import React from "react"
import { render, screen } from "@testing-library/react"
import ApartmentIndex from "./ApartmentIndex"
import mockApartments from "../mockApartments"

describe("<ApartmentIndex />", () => {
  it("renders ApartmentIndex without crashing", () => {
    const div = document.createElement("div")
    render(<ApartmentIndex mockApartments = {mockApartments}/>, div)

    mockApartments.forEach(apartment => expect(screen.getByText(apartment.street, {exact: false})).toBeInTheDocument())
  })
})
