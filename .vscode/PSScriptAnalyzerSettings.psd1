@{
    IncludeDefaultRules = $true
    CustomRulePath      = ".\Resource\PssaRules\*"
    Rules               = @{
        PSProvideCommentHelp               = @{
            Enable       = $true
            ExportedOnly = $false
            BlockComment = $true
        }
        PSPlaceOpenBrace                   = @{
            Enable     = $true
            OnSameLine = $false
        }
        PSAlignAssignmentStatement         = @{
            Enable         = $true
            CheckHashtable = $true
        }
        PSAvoidLongLines                   = @{
            Enable            = $true
            MaximumLineLength = 120
        }
        PSAvoidSemicolonsAsLineTerminators = @{
            Enable = $true
        }
    }
}
