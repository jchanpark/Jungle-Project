describe("Home_page", () => {

  it("should visit root", () => {
    cy.visit("/");
  });

  it("Click on an item and cart should contain one item", () => {
    cy.get(".products > article:first-child .button_to > .btn").click({ force: true 
    });
    cy.get(
      "#navbarSupportedContent > .navbar-nav:nth-child(2) > .nav-item:nth-child(2) .nav-link"
    ).contains(1);
  });  

});