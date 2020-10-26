//
//  Facility.swift
//  SnowSeeker
//
//  Created by Ahmed Mgua on 10/1/20.
//

import SwiftUI


struct Facility:	Identifiable	{
	
	let id	=	UUID()
	var name:	String
	
	var icon:	some	View	{
		let icons	=	[
			"Accommodation"	:	"house",
			"Beginners"	:	"1.circle",
			"Cross-country"	:	"map",
			"Eco-friendly"	:	"l",
			"Family"	:	"person.3"
		]
		
		if let iconName	=	icons[name]	{
			let image	=	Image(systemName: iconName).accessibility(label: Text(name)).foregroundColor(.secondary)
			
			return image
		}	else	{
			fatalError("Unknown facility type: \(name)")
		}
	}
	
	var	alert:	Alert	{
		let messages	=	[
			"Accommodation":	"This resort has popular on-site accommodation.",
			"Beginners":	"This resort has lots of resources for beginners to get started.",
			"Cross-country":	"This resort has many cross-country routes.",
			"Eco-friendly":	"This resort has won an award for environmental friendliness.",
			"Family":	"This resort is popular with families."
		]
		
		if let message	=	messages[name]	{
			return	Alert(title: Text(name),	message: Text(message))
		}	else	{
			fatalError("Unknown facility type: \(name).")
		}
	}
}
