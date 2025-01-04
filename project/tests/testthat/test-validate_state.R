describe("validate_state()", {
  
  it("produces no error if provided with a valid state", {
    expect_no_error(validate_state("FL"))
  })
  
  
  it("produces an error if provided with a vector containing an invalid species", {
    expect_error(validate_state("XX"))
  })
  
  it("produces no error if provided with an empty string", {
    expect_no_error(validate_state(""))
  })
  
  
})