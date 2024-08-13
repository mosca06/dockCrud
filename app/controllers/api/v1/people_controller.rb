module Api
  module V1
    class PeopleController < ApplicationController
      before_action :set_person, only: [:show, :update, :destroy]

      # GET /api/v1/people
      def index
        @people = Person.all
        render json: @people
      end

      # GET /api/v1/people/:id
      def show
        render json: @person
      end

      # POST /api/v1/people
      def create
        @person = Person.new(person_params)
        if @person.save
          render json: @person, status: :created
        else
          render json: @person.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /api/v1/people/:id
      def update
        if @person.update(person_params)
          render json: @person
        else
          render json: @person.errors, status: :unprocessable_entity
        end
      end

      # DELETE /api/v1/people/:id
      def destroy
        @person.destroy
        head :no_content
      end

      private

      def set_person
        @person = Person.find(params[:id])
      end

      def person_params
        params.require(:person).permit(:name, :email, :age)
      end
    end
  end
end
