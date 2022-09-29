import React from "react"
import { Card, CardBody, CardTitle, CardSubtitle, Button } from 'reactstrap'

const ProtectedApartmentIndex = ({apartments, current_user}) => {

const filteredApartments = apartments?.filter(apartment => apartment.user_id === current_user.id)
console.log(apartments);
return (
    <>
    <h1>List of apartments for logged in users.</h1>
      {filteredApartments?.map((apartment, index) => {
      return (
      <Card style={{width: '18rem'}} key={index}>
      <img alt="Unit Image" src={apartment.image}/>
        <CardBody>
          <CardTitle tag="h5">
          Location: <br/>{apartment.street} {apartment.city}, {apartment.state}
          </CardTitle>
          <CardSubtitle className="mb-2 text-muted" tag="h6">
            Price: ${apartment.price}
            <br/>{apartment.bedrooms} bedrooms
            <br/>{apartment.bathrooms} bathrooms
          </CardSubtitle>
          <Button>
            Visit Apartment
          </Button>
        </CardBody>
      </Card>
      )
      })
    }
    </>
    )
}

export default ProtectedApartmentIndex