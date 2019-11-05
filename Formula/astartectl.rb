class Astartectl < Formula
  desc "Astarte command-line client utility"
  homepage "https://astarte.cloud"
  url "https://github.com/astarte-platform/astartectl/archive/v0.10.2.tar.gz"
  sha256 "18c5a08274350866e814f777384dfabb4000469c29d45a5f7a2bfbea102b82c5"

  depends_on "go" => :build

  def install
    system "go", "build"
    bin.install "astartectl" => "astartectl"
  end

  test do
    assert_equal "Valid", shell_output("#{bin}/astartectl utils device-id validate 2TBn-jNESuuHamE2Zo1anA").strip
  end
end