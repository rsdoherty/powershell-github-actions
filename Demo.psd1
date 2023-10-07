@{
    RootModule = 'Demo.psm1'
    ModuleVersion = '0.0.1'
    GUID = 'bc4206b8-4fac-4bb9-970e-59d34bc067a6'
    Author = 'Ryan Doherty'
    CompanyName = 'Unknown'
    Copyright = '(c) Ryan Doherty. All rights reserved.'
    Description = 'Sample module used for testing GitHub Actions'
    FunctionsToExport = @(
        'Get-BitcoinPrice'
    )
    PrivateData = @{
        PSData = @{
            Tags = @("GitHub Actions")
            ProjectUri = 'https://github.com/rsdoherty/powershell-github-actions'
        }
    }
}
