describe("bd_top25_file()", {
  
  it("produces no error if given correct arguments", {
    expect_no_error(bd_top25_file("FL", 4))
  })
  
  it("produces a tibble with 25 observations if given valid input", {
    top <- bd_top25_file("FL", 4)
    ln <- length(top$english_name)
    expect_equal(ln, 25)
  })
  
  it("produces an error if an invalid state is given", {
    expect_error(bd_top25_file("XX", 1))
  })
  
  it("produces an error if an invalid month is given", {
    expect_error(bd_top25_file("XX", 7))
  })
  
  it("correctly maps the bird species code with its english name", {
    top <- bd_top25_file("FL", 4)
    validate <- function() {
      if (head(top[1], 1)$bird[1] == c("norcar")) {
      return (head(top[2], 1)$english_name[1])
      }
      }
    name <- validate()
    expect_equal(name, c("Northern Cardinal"))
    
    
  })
  
  
})