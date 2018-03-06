function Add-ADUserFolder {
<#
.Synopsis
   Short description
.DESCRIPTION
   Long description
.EXAMPLE
   Example of how to use this cmdlet
.EXAMPLE
   Another example of how to use this cmdlet
.INPUTS
   Inputs to this cmdlet (if any)
.OUTPUTS
   Output from this cmdlet (if any)
.NOTES
   General notes
.COMPONENT
   The component this cmdlet belongs to
.ROLE
   The role this cmdlet belongs to
.FUNCTIONALITY
   The functionality that best describes this cmdlet
#>
    [CmdletBinding()]
    param (
        
        [Parameter(Mandatory,ValueFromPipeline=$true,ValueFromPipelineByPropertyName=$TRUE)]
        [string[]]$Username,

        [Parameter(Mandatory,ValueFromPipelineByPropertyName=$TRUE)]
        [string[]]$Path
    )
    
    begin {
    }
    
    process {

        foreach ($User in $Username) {
        #    New-Item -ItemType Directory -Path $Path
            New-Item -Path $Path -Name $User -ItemType Directory              
        }
    }
    
    end {
    }
}
