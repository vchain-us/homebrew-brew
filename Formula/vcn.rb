class Vcn < Formula
    desc "VChain Code Notary Command-Line Interface"
    homepage "https://www.codenotary.io"
    version "v0.7.4"
    if OS.mac?
        url "https://github.com/vchain-us/vcn/releases/download/#{version}/vcn-#{version}-darwin-10.6-amd64"
        sha256 "9a292005095c82426916e6a103d1047614df4e7c482ccc119ff2ff1b8d0e2126"
    elsif OS.linux?
        url "https://github.com/vchain-us/vcn/releases/download/#{version}/vcn-#{version}-linux-amd64"
        sha256 "30fb0da7d525dff08bd133d88fccc28fada67caebb0abdf6ce6f4455b7c43ea9"
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
