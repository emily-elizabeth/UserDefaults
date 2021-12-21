#tag Class
Protected Class UserDefaults
	#tag Method, Flags = &h0
		Sub Constructor(path As FolderItem)
		  mPath = path
		  
		  try
		    // if you get an error, it's okay, just continue as the "catch" 
		    // statement will do what it needs to do..
		    DIM input As TextInputStream = TextInputStream.Open(path)
		    me.mUserDefaults = NEW JSONItem(input.ReadAll)
		    input.Close
		    
		  catch e As IOException
		    mUserDefaults = NEW JSONItem
		  end try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Lookup(key As Text, defaultValue As Auto) As Auto
		  try
		    Return mUserDefaults.Lookup(key, defaultValue)
		  end try
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Save()
		  try
		    DIM output As TextOutputStream = TextOutputStream.Create(me.mPath)
		    output.Write me.mUserDefaults.ToString
		    output.Close
		  end try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Set(key As Text, Assigns value As Auto)
		  try
		    mUserDefaults.Value(key) = value
		  end try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToString() As String
		  Return me.mUserDefaults.ToString
		End Function
	#tag EndMethod


	#tag Note, Name = UNLICENSE
		
		This is free and unencumbered software released into the public domain.
		
		Anyone is free to copy, modify, publish, use, compile, sell, or
		distribute this software, either in source code form or as a compiled
		binary, for any purpose, commercial or non-commercial, and by any
		means.
		
		In jurisdictions that recognize copyright laws, the author or authors
		of this software dedicate any and all copyright interest in the
		software to the public domain. We make this dedication for the benefit
		of the public at large and to the detriment of our heirs and
		successors. We intend this dedication to be an overt act of
		relinquishment in perpetuity of all present and future rights to this
		software under copyright law.
		
		THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
		EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
		MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
		IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
		OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
		ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
		OTHER DEALINGS IN THE SOFTWARE.
		
		For more information, please refer to <http://unlicense.org>
	#tag EndNote


	#tag Property, Flags = &h21
		Private mPath As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mUserDefaults As JSONItem
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
