class Sub < Formula
  desc ""
  homepage ""
  url "https://github.com/GreenGremlin/sub/archive/v0.1.2.tar.gz"
  # sha256 "ac387e05074e93095bb61ada9adf0f3d05d748e5893c93e4d88e2766a8f262dc"

  def install
    bin.install "sub.sh" => "sub"
    bin.install "mksub.sh" => "mksub"
    bash_completion.install "completions/sub.bash" => "sub-completions"
  end
end
