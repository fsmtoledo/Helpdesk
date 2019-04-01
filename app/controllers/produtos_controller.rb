class ProdutosController < ApplicationController
    #before_action :set_descricao, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_member!, #except: [:index]
    
    def index
        @produtos = Produto.page(params[:page]).per(5)
        @produto_com_desconto = Produto.page(params[:page]).per(3)
    end

    def new
        @produto = Produto.new
    end

    def create
        valores = params.require(:produto).permit(:nome, :departamento, :equipamento, :descricao, :data)
        @produto = Produto.new valores
        if @produto.save
            flash[:notice] = "Chamado criado com sucesso"
            redirect_to produtos_path
        else
            render :new
        end
    end

    def edit
        id = params[:id]
        produto = Produto.find(id)
        @produtos = Produto.all
        render :new
    end

    def destroy
        id = params[:id]
        Produto.destroy id
        redirect_to produtos_path
    end

    def busca
        @nome = params[:nome]
        @produtos = Produto.where "nome like ?", "%#{@nome}%"
    end
end


