module Api
  module V1
    class JobStatusesController < ApplicationController
      def index
        job_statuses = JobStatus.all

        render json: JobStatusSerializer.new(job_statuses).serialized_json
      end
    end
  end
end

