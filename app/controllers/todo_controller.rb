class TodoController < ApplicationController
    # untuk menampilkan semua data
    def index
        @tasks = Todo.all
    end

    # untuk membuat form tambah data
    def tambah
        # menginisialisasi model untuk form nya nanti
        @tambah =Todo.new
    end

    # untuk mengirim data dari action tambah
    def kirim
        @kirim = Todo.new(todo_params)

        if @kirim.save
            redirect_to todo_index_path, notice: 'Task berhasil ditambahkan'
        else
            render :tambah
        end
    end

    # untuk mengedit data
    def edit
        @ambil_id = Todo.find(params[:id])
    end

    # untuk mengupdate data dari action edit
    def update
        @ambil_id = Todo.find(params[:id])

        if @ambil_id.update(todo_params)
            redirect_to todo_index_path, notice: 'Task berhasil diupdate'
        else
            render :edit
        end
    end

    # untuk hapus data
    def destroy
        @ambil_id = Todo.find(params[:id])

        if @ambil_id.destroy
            redirect_to todo_index_path, notice: 'Task berhasil dihapus'
        else
            render :index
        end
    end

    private
    def todo_params
        params.require(:todo).permit(:task, :deadline, :status)
    end
end