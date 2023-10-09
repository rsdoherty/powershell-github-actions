@{
    IncludeDefaultRules = $true
    CustomRulePath = ".\Resource\PssaRules\*"
    Rules = @{
        PSProvideCommentHelp = @{
            Enable = $true
            ExportedOnly = $false
            BlockComment = $true
        }
        PSPlaceOpenBrace = @{
            Enable = $true
            OnSameLine = $false
        }
    }
}
