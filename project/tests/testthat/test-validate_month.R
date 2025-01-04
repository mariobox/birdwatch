describe("validate_month()", {
  
  it("produces no error if provided with a valid month: 1, 2, 3, 4, 11, 12", {
    expect_no_error(validate_month(3))
  })
  
  
  it("produces an error if provided with an invalid month", {
    expect_error(validate_month(7))
  })
  
  it("produces an error if provided with an invalid month", {
    expect_error(validate_month("hello world"))
  })
  
  
})