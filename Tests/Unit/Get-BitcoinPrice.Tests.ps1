InModuleScope "Demo" {

    Describe "Get-BitcoinPrice" {

        It "Returns correctly" {
            Get-BitcoinPrice | Should -Be "BITCOIN_PRICE"
        }

    }
}
