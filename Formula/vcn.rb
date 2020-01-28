class Vcn < Formula
    desc "VChain Code Notary Command-Line Interface"
    homepage "https://www.codenotary.io"
    version "v0.8.0"
    if OS.mac?
        url "https://github.com/vchain-us/vcn/releases/download/#{version}/vcn-#{version}-darwin-10.6-amd64"
        sha256 "d197d6d1d724a978dab334b7a6bc5ce9ccb827321bdeab244b6fa50feb05b73f"
    elsif OS.linux?
        url "https://github.com/vchain-us/vcn/releases/download/#{version}/vcn-#{version}-linux-amd64"
        sha256 "fd67cb9db94c4f0f077f4ef1ccf922bf09ec3b3f8769d99d6bac44ca7a108136"
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
