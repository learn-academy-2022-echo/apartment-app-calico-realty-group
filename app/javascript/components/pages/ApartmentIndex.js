import React from "react"
import { Card, CardBody, CardTitle, Button } from "reactstrap"

const ApartmentIndex = ({mockApartments}) => {
  return (
    <>
    <h3>Available Listings</h3>
      <div>
        {mockApartments.map((apartment, index) => {
          {console.log(apartment)}
          return (
            <Card style={{width: '18rem'}} key={index}>
              <img
                alt="Apartment Image"
                src={apartment.image}
              />
              <CardBody>
                <CardTitle tag="h5">
                  ${apartment.price}
                </CardTitle>
                <CardTitle tag="h5">
                  {apartment.street}<br/> 
                  {apartment.city}, {apartment.state}
                </CardTitle>
                <CardTitle tag="p">
                  {apartment.bedrooms} bedrooms
                </CardTitle>
                <CardTitle tag="p">
                  {apartment.bathrooms} bathrooms
                </CardTitle>
              </CardBody>
            </Card>
          )
        })}
      </div>
    </>
  )
}

export default ApartmentIndex
