class Vcn < Formula
    desc "VChain Code Notary Command-Line Interface"
    homepage "https://www.codenotary.io"
    version "v0.7.1"
    if OS.mac?
        url "https://github.com/vchain-us/vcn/releases/download/#{version}/vcn-#{version}-darwin-10.6-amd64"
        sha256 "85eefe187ef1bfa0001afc7d3cfbce25072dd16e74a3c76f83d6b4ec2c4ec441"
    elsif OS.linux?
        url "https://github.com/vchain-us/vcn/releases/download/#{version}/vcn-#{version}-linux-amd64"
        sha256 "c10ce1b1e70d81bcee4f9c09963a94613ff1729051efaccfa66afd19163a814f"
    end

    def install
        if OS.mac?
            bin.install "./vcn-#{version}-darwin-10.6-amd64" => "vcn"
        elsif OS.linux?
            bin.install "./vcn-#{version}-linux-amd64" => "vcn"
        end
    end

    test do
        system "#{bin}/vcn", "--help"
    end
end
