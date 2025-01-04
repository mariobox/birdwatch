describe("validate_species()", {
  
  it("produces no error if provided with a valid species vector", {
    expect_no_error(validate_species(c("norcar", "baleag")))
  })
  
  
  it("produces an error if provided with a vector containing an invalid species", {
    expect_error(validate_species(c("norcar", "baliag")))
  })
  
  it("produces an error if provided with an empty string", {
    expect_error(validate_species(""))
  })
  
  
})