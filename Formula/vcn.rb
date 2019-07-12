class Vcn < Formula
	desc "VChain Code Notary Command-Line Interface"
	homepage "https://www.codenotary.io"
    url "https://github.com/vchain-us/vcn/releases/download/v0.5.1/vcn-v0.5.1-darwin-10.6-amd64"
	sha256 "8bb283ed471df2495bdeb2a583641c48f301a012a76d3c011f7e416080ecdb82"

	def install
		bin.install "./vcn-v0.5.1-darwin-10.6-amd64" => "vcn"
	end

	test do
		system "#{bin}/vcn", "--help"
	end
end
