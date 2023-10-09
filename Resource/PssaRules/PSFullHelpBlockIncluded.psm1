function PSFullHelpBlockIncluded
{
    [CmdletBinding()]
    [OutputType([Microsoft.Windows.PowerShell.ScriptAnalyzer.Generic.DiagnosticRecord[]])]
    Param
    (
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [System.Management.Automation.Language.ScriptBlockAst]
        $ScriptBlockAst
    )

    process
    {
        $FunctionDefinitions = $ScriptBlockAst.FindAll(
            {$args[0] -is [Management.Automation.Language.FunctionDefinitionAst]}, $true
        )
        $FunctionDefinitions | ForEach-Object {
            $Function = $_
            $Help = $Function.GetHelpContent()

            if (-not $Help.Synopsis)
            {
                [Microsoft.Windows.PowerShell.ScriptAnalyzer.Generic.DiagnosticRecord]@{
                    RuleName = "PSFullHelpBlockIncluded"
                    Severity = "Error"
                    Message = "The help block for the function '$($Function.Name)' is missing a SYNOPSIS."
                    Extent = $functionAst.Extent
                }
            }

            if (-not $Help.Description)
            {
                [Microsoft.Windows.PowerShell.ScriptAnalyzer.Generic.DiagnosticRecord]@{
                    RuleName = "PSFullHelpBlockIncluded"
                    Severity = "Error"
                    Message = "The help block for the function '$($Function.Name)' is missing a DESCRIPTION."
                    Extent = $functionAst.Extent
                }
            }
        }

    }
}
