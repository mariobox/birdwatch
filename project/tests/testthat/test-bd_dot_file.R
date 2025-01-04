describe("bd_dot_file()", {
  it("produces no error if given correct arguments", {
    expect_no_error(bd_dot_file(c("norcar", "paibun"), "FL"))
  })
  
  it("produces an error if given an incorrect state name", {
    expect_error(bd_dot_file(c("norcar", "paibun"), "XX"))
  })
  
  it("produces an error ir an invalid bird species is given", {
    expect_error(bd_dot_file(c("xxxxxxx"), "FL"))
  })
  
  it("produces an error if no bird species are given", {
    expect_error(bd_dot_file(""))
  })
  
  it("produces a tibble with 355 observations", {
    loc <- bd_dot_file(c("norcar", "paibun"), "FL")
    ln <- length(loc$SPECIES_CODE)
    expect_equal(ln, 355)
  })
  
  
  
  
})