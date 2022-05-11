describe("Home_page", () => {

  it("should visit root", () => {
    cy.visit("/");
  });

  it("click on item , redirects you to item page, should contain a class called product detail  ", () => {
    cy.get(":nth-child(1) > a > img").click();
    cy.contains("article", "Scented Blade");
    cy.get(".product-detail").should("exist");
  });
  
});