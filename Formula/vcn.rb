class Vcn < Formula
	desc "VChain Code Notary Command-Line Interface"
	homepage "https://www.codenotary.io"
	url "https://github.com/vchain-us/vcn/archive/v0.5.1.tar.gz"
	sha256 "59b74effb5192de42e0181a6cabdb4ecc9dc20818132b5814ac2078ea0be580a"

	head do
		url "https://github.com/vchain-us/vcn.git"
	end

	depends_on "go" => :build

	def install
		ENV["GOBIN"] = buildpath
		system "make", "install"
		bin.install "./vcn" => "vcn"
	end

	test do
		system "#{bin}/vcn", "--help"
	end
end
