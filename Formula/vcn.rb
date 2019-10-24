class Vcn < Formula
    desc "VChain Code Notary Command-Line Interface"
    homepage "https://www.codenotary.io"
    version "v0.7.2"
    if OS.mac?
        url "https://github.com/vchain-us/vcn/releases/download/#{version}/vcn-#{version}-darwin-10.6-amd64"
        sha256 "72eccc89b0ab1f7b51a69b233e83af02d8ffa5b163ca1eff313d33f9420e94c0"
    elsif OS.linux?
        url "https://github.com/vchain-us/vcn/releases/download/#{version}/vcn-#{version}-linux-amd64"
        sha256 "5b50b3acec0f9f7cfe4f8a60401d4d1672a795c8bc95f3408192d18ccec8d160"
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
