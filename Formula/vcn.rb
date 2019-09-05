class Vcn < Formula
    desc "VChain Code Notary Command-Line Interface"
    homepage "https://www.codenotary.io"
    version "v0.6.0"
    if OS.mac?
        url "https://github.com/vchain-us/vcn/releases/download/v0.6.0/vcn-v0.6.0-darwin-10.6-amd64"
        sha256 "9f6b31ad344bbaacf033cd7f9308d5835fd71531666b8159d3e78ba943767857"
    elsif OS.linux?
        url "https://github.com/vchain-us/vcn/releases/download/v0.6.0/vcn-v0.6.0-linux-amd64"
        sha256 "5e0edaceed59ab794d477a70cbf1b44d51be590556aa8a439435defa4ce9a916"
    end

    def install
        if OS.mac?
            bin.install "./vcn-v0.6.0-darwin-10.6-amd64" => "vcn"
        elsif OS.linux?
            bin.install "./vcn-v0.6.0-linux-amd64" => "vcn"
        end
    end

    test do
        system "#{bin}/vcn", "--help"
    end
end
