describe("bd_line_file()", {
  it("produces no error if given correct arguments", {
    expect_no_error(bd_line_file(c("norcar", "paibun"), "FL"))
  })
  
  it("produces an error if given an incorrect state name", {
    expect_error(bd_line_file(c("norcar", "paibun"), "XX"))
  })
  
  it("produces a tibble with 12 observations", {
    obs <- bd_line_file(c("norcar", "paibun"))
    ln <- length(obs$SPECIES_CODE)
    expect_equal(ln, 12)
  })
  
  it("produces an error if no bird species are given", {
    expect_error(bd_line_file(""))
  })
  
  it("produces an error if no bird species are given", {
    expect_error(bd_line_file(c("xxxxxxx"), "FL"))
  })
})