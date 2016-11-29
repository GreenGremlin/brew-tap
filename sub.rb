class Sub < Formula
  desc ""
  homepage ""
  url "https://github.com/GreenGremlin/sub/archive/v0.1.1.tar.gz"
  # sha256 "85cc828a96735bdafcf29eb6291ca91bac846579bcef7308536e0c875d6c81d7"

  def install
    bin.install "sub.sh" => "sub"
    bin.install "mksub.sh" => "mksub"
    bash_completion.install "completions/sub.bash" => "sub-completions"
  end
end
