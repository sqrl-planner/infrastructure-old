resource "hcloud_ssh_key" "eamon_key" {
  name       = "eamon_key"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIO2UGRoGNRda03FC6YzqYUFLmh6UGMtLoOUZrOOq2kN2 m@eamonma.com"
}

resource "hcloud_ssh_key" "shon_key" {
  name       = "shon_key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDUyw6CnvOI0gXAnSBWKPbupqs1yUjciNgmNukppKr5rZbK3ObQxqO/j9R7DXd3Rht01ctsFIGGE1dp5bWekvS6B7RsZ31f0n7Iuur36SKVJSplNPOV/GPaVSJ9YDC4ozY1MiQyiqJ23QdaeTvftt/8jHp1TZZrYf9bWD80NNYyZhxtEOcA6Szq/b+Bex5EW1xAN8pSq0ewQvnBNQIxlTSLIApw9oCos5XF03TxOwxwL/OEY0ui/OUoBT15B4uh9ALb9/UarGPKxvegJgEenzdlkz34HtYCr2/FCvUdKzET9+jL1yPFb8O52mkSFSH9szgdTQYrwxf5f46bb2ujoGXP"
}
