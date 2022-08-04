class Table < ApplicationRecord 
validates :Name_of_the_Student ,presence: true ,length: {minimum:3,maximum:15}
validates :Class ,presence: true ,length: {minimum:1,maximum:2}
validates :Email_Id ,presence: true ,length: {minimum:5,maximum:15}
validates :Date_of_birth ,presence: true ,length: {minimum:5,maximum:15}
validates :Residential_Area ,presence: true ,length: {minimum:10,maximum:100}
validates :Contact_Number ,presence: true ,length: {maximum:10}
validates :Fathers_Name ,presence: true ,length: {minimum:3,maximum:15}
validates :Occupation_of_Father ,presence: true ,length: {minimum:3,maximum:15}
validates :Fathers_Contact_Number ,presence: true ,length: {maximum:10}
validates :Mothers_Name ,presence: true ,length: {minimum:3,maximum:15}
validates :Occupation_of_Mother ,presence: true ,length: {minimum:3,maximum:15}
validates :Mothers_Contact_Number ,presence: true ,length: {maximum:10}
validates :Name_of_the_Student ,presence: true ,length: {minimum:3,maximum:15}
end