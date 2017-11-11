class PetsController < ApplicationController

   get '/pets' do
     @pets = Pet.all 
    erb :'/pets/index'
   end


  get '/pets/new' do
     erb :'/pets/new'
   end

  post '/pets' do
    @pet = Pet.create(params[:owner])
    if !params["owner"]["name"].empty?
      @pet.owner = Owner.create(name: params["pet"]["name"])
    end
    @pet.save
    redirect "pet/#{@pet.id}"
   end


  get '/pets/:id' do
     @pet = Pet.find(params[:id])
     erb :'/pets/show'
   end


  post '/pets/:id' do

     redirect to "pets/#{@pet.id}"
   end
end
