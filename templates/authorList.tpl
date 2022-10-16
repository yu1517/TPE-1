{include file="header.tpl"}

<!-- lista de tareas -->
<table class="table table-hover">
    <thead>
        <tr>
            <th scope="col">Nombre</th>
            <th scope="col">Nacionalidad</th>
            <th scope="col">Año de Nacimiento</th>
        </tr>
    </thead>
    <tbody>
        {foreach from=$authors item=$author}
            <tr>
                <td>{$author->name}</td>
                <td>{$author->nationality}</td>
                <td>{$author->birthdate}</td>
                <td><a href='deleteAuthor/{$author->id_author}' type='button' class='btn btn-danger'>Borrar</a></td>
                <td><a href='showEditAuthor/{$author->id_author}' type='button' class='btn btn-danger ml-auto'>Editar</a></td>
            </tr>
        {/foreach}
    </tbody>
</table>
    {include file="formAuthor.tpl"}
    {include file="footer.tpl"}




{*
        <li class='list-group-item d-flex justify-content-between align-items-center'>
<span> <b>{$author->name}</b> - {$author->nationality} - {$author->birthdate}</span>
            <div class="ml-auto">
            </div>
        </li>
</ul>

<p class="mt-3"><small>Mostrando {$count} Authores</small></p>

*}