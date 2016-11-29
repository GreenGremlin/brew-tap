class SubEs < Formula
  desc ""
  homepage ""
  url "https://github.com/GreenGremlin/es/archive/v0.1.0.tar.gz"
  head "https://github.com/GreenGremlin/es.git"
  # sha256 "ac387e05074e93095bb61ada9adf0f3d05d748e5893c93e4d88e2766a8f262dc"
  depends_on "greengremlin/cask/sub"

  def install
    libexec.install Dir["*"]
    es_command = `mksub es #{libexec}`
    print es_command
  end
end
