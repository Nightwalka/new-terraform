variable "computer" {
  type = list(string)
  default = [ "ws01","admin01", "admin" ]
}

#then rlater,

[for s in var.computer : upper(s) ]
