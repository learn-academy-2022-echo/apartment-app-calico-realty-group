import React from "react";
import background1 from "../assets/background1.jpeg";
import { Button } from "reactstrap";
import { NavLink } from "react-router-dom";


const Home = ({
  logged_in,
  current_user,
  new_user_route,
  sign_in_route,
  sign_out_route,
}) => {
  return (
    <main>
      <h1> Welcome! Calico Realty </h1>
      <h2> You Dream it, Calico Realty Makes It Reality! </h2>

      <br></br>
      <br></br>
      <div className="Home">
        <br></br>
        <br></br>
        <img
          src={background1}
          alt="Calico Realty Group"
          className="HomeImage"
        />
      </div>
        <br></br>
        <br></br>
      
        <div class="container">
  <div class="text-box">
    <div class="hover">
      <p>Are you ready for your dream home? Well Calico Realty is on a mission to make your next home dreams a reality. Our mission is to help people buy and sell houses and achieve their real estate goals. </p>
    </div>
  </div>
</div>

      <div className="Button">
        {logged_in && (
          <NavLink to="/apartmentshow" className="nav-link">
            <Button color="primary">My Listings</Button>
          </NavLink>
        )}

        {logged_in && (
          <NavLink to="/apartmentindex" className="nav-link">
            <Button color="primary">View Listings</Button>
          </NavLink>
        )}
      </div>
    </main>
  );
};

export default Home;
