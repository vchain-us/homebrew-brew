class Vcn < Formula
    desc "VChain Code Notary Command-Line Interface"
    homepage "https://www.codenotary.io"
    version "v0.6.3"
    if OS.mac?
        url "https://github.com/vchain-us/vcn/releases/download/v0.6.3/vcn-v0.6.3-darwin-10.6-amd64"
        sha256 "5a9b44c4e570975fe65e3f82cc5dc4bfdf358f7b3cef9166e5a2544bba347053"
    elsif OS.linux?
        url "https://github.com/vchain-us/vcn/releases/download/v0.6.3/vcn-v0.6.3-linux-amd64"
        sha256 "cabea5ccdf9380775f1d40fd2a1baec8ee697ecf107f13283bcfc08bd0c9df65"
    end

    def install
        if OS.mac?
            bin.install "./vcn-v0.6.3-darwin-10.6-amd64" => "vcn"
        elsif OS.linux?
            bin.install "./vcn-v0.6.3-linux-amd64" => "vcn"
        end
    end

    test do
        system "#{bin}/vcn", "--help"
    end
end
